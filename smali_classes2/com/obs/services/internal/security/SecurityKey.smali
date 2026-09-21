.class public Lcom/obs/services/internal/security/SecurityKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bean:Lcom/obs/services/internal/security/SecurityKeyBean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "credential"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Lcom/obs/services/internal/security/SecurityKeyBean;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/obs/services/internal/security/SecurityKey;->bean:Lcom/obs/services/internal/security/SecurityKeyBean;

    return-object p0
.end method

.method public setBean(Lcom/obs/services/internal/security/SecurityKeyBean;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/obs/services/internal/security/SecurityKey;->bean:Lcom/obs/services/internal/security/SecurityKeyBean;

    return-void
.end method
