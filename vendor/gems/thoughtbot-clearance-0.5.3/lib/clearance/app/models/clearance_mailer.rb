module Clearance
  module App
    module Models
      module ClearanceMailer

        def change_password(user)
          from       DO_NOT_REPLY
          recipients user.email
          subject    "Cambiar la contraseña"
          body       :user => user
        end

        def confirmation(user)
          from       DO_NOT_REPLY
          recipients user.email
          subject   "Cuenta creada con éxito"
          body      :user => user
        end

      end
    end
  end
end
