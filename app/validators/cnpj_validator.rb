class CnpjValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless is_cnpj_valid?(value)
      object.errors[attribute] << (options[:message] || :msg_invalid_cnpj)
    end
  end

  private

  ## algorithm source: http://www.macoratti.net/alg_cnpj.htm
  def is_cnpj_valid?(cnpj)

    if(cnpj.length == NUMBER_DIGITS_CNPJ)

      binding.pry

      valid = true

      ### verifying first verification digit

      value = cnpj[0].to_i * 5 + cnpj[1].to_i * 4 + cnpj[2].to_i * 3  + cnpj[3].to_i * 2 + cnpj[4].to_i * 9 + cnpj[5].to_i * 8
      value += cnpj[6].to_i * 7 + cnpj[7].to_i * 6 + cnpj[8].to_i * 5 + cnpj[9].to_i * 4 + cnpj[10].to_i * 3  + cnpj[11].to_i * 2

      value = value%11;

      if value < 2
        valid = false unless cnpj[12].to_i == 0
      else
        if cnpj[12].to_i == 11 - value

            ### verifying second verification digit
            value = cnpj[0].to_i * 6 + cnpj[1].to_i * 5 + cnpj[2].to_i * 4  + cnpj[3].to_i * 3 + cnpj[4].to_i * 2 + cnpj[5].to_i * 9
            value += cnpj[6].to_i * 8 + cnpj[7].to_i * 7 + cnpj[8].to_i * 6 + cnpj[9].to_i * 5 + cnpj[10].to_i * 4  + cnpj[11].to_i * 3 +  cnpj[12].to_i * 2

            value = value%11;

            if value < 2
              valid = false unless cnpj[13].to_i == 0
            else
              value = 11 - value;
              valid = false unless cnpj[13].to_i == value
            end
        else
          valid = false
        end
      end

      valid

    else

      false

    end
  end
end