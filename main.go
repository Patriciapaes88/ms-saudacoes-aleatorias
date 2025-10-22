package main

import (
    "math/rand"
    "net/http"
    "github.com/gin-gonic/gin"
)

var saudacoes = []string{
    "Olá, mundo!",
    "Oi, sumido!",
    "Bom dia, flor do dia!",
    "E aí, beleza?",
}

func main() {
    r := gin.Default()

    r.GET("/saudacao", func(c *gin.Context) {
        saudacao := saudacoes[rand.Intn(len(saudacoes))]
        c.JSON(http.StatusOK, gin.H{"mensagem": saudacao})
    })

    r.Run(":8080")
}

