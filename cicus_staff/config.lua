CICUS_staff = {}

CICUS_staff.lang = {
    ["text"] = "STAFF | %s | %s", -- Testo che appare i due percentuali sono sono il ruolo ed il nome NON TOCCARLI
    ["error_message"] = "Errore | Non sei uno staff" -- Messagio di errore quando non sei staff
}

CICUS_staff.main = {
    commands = "staff", --- Comando per attivarlo e disattivarlo
    notification = function () -- Metti la tua notifica
        ESX.ShowNotification(CICUS_staff.lang["error_message"])
    end
}

CICUS_staff.roles = { -- Ruoli con colore e label -- QUESTI RUOLI DEVO ESSERE SU ESX
    ["admin"] = {color = {255, 7, 7, 0.8}, label = "Admin"},
    ["owner"] = {color = {239, 180, 11, 0.8}, label = "Owner"},
    ["helper"] = {color = {46, 255, 13, 0.8}, label = "Helper"},
}

CICUS_staff.text = { -- Opzioni del testo Font e Grandezza
    font = 4,
    scale = {0, 0.7}
}


