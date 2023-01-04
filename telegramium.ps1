class Telegramium{
    [string]$TOKEN
    
    Telegramium([string]$token){
        $this.TOKEN = $token

    }

    [string] getMe(){
        $token_ = $this.TOKEN
        $data = Invoke-WebRequest -URI "https://api.telegram.org/bot$token_/getMe"  
        return $data 
    }
    [string] sendMessage([string]$chat_id, [string]$text){
        $token_ = $this.TOKEN
        $data = Invoke-WebRequest "https://api.telegram.org/bot$token_/sendMessage?chat_id=$chat_id&text=$text&parse_mode=HTML"
        return $data 
    }
    [string] sendPhoto([string]$chat_id, [string]$caption, [string]$photo){
        $token_ = $this.TOKEN
        $data = Invoke-WebRequest "https://api.telegram.org/bot$token_/sendPhoto?chat_id=$chat_id&caption=$caption&photo=$photo&parse_mode=HTML"
        return $data 
    }
    [string] sendVideo([string]$chat_id, [string]$caption, [string]$video){
        $token_ = $this.TOKEN
        $data = Invoke-WebRequest "https://api.telegram.org/bot$token_/sendVideo?chat_id=$chat_id&caption=$caption&photo=$video&parse_mode=HTML"
        return $data 
    }
    [string] sendAudio([string]$chat_id, [string]$caption, [string]$audio){
        $token_ = $this.TOKEN
        $data = Invoke-WebRequest "https://api.telegram.org/bot$token_/sendAudio?chat_id=$chat_id&caption=$caption&photo=$audio&parse_mode=HTML"
        return $data 
    }
    [string] sendDocument([string]$chat_id, [string]$caption, [string]$bytes){
        $token_ = $this.TOKEN
        $data = Invoke-WebRequest "https://api.telegram.org/bot$token_/sendDocument?chat_id=$chat_id&caption=$caption&photo=$bytes&parse_mode=HTML"
        return $data 
    }
}
