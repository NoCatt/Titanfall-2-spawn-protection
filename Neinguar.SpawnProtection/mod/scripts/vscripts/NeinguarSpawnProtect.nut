global function Neinguar_Spawn_Protect_Init

void function Neinguar_Spawn_Protect_Init() {

    AddCallback_OnPlayerRespawned( OnSpawn )
    
}
int health = GetConVarInt("Health_Of_protection")
int duration = GetConVarInt("Protect_Time")

void function OnSpawn(entity player){
    int PrevMaxHealth = player.GetMaxHealth()
    player.SetMaxHealth(health)
    player.SetHealth(player.GetMaxHealth())
    wait(duration)
    player.SetMaxHealth(PrevMaxHealth)
    player.SetHealth(player.GetMaxHealth())
}