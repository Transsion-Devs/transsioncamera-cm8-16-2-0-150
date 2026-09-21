.class public Lcom/transsion/hubsdk/core/factorymode/TranThubFactoryModeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/factorymode/ITranFactoryModeAdapter;


# instance fields
.field private mFactoryModeManager:Lcom/transsion/hubsdk/factorymode/TranFactoryModeManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget-object v0, p0, Lcom/transsion/hubsdk/core/factorymode/TranThubFactoryModeManager;->mFactoryModeManager:Lcom/transsion/hubsdk/factorymode/TranFactoryModeManager;

    if-nez v0, :cond_e

    .line 14
    new-instance v0, Lcom/transsion/hubsdk/factorymode/TranFactoryModeManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/factorymode/TranFactoryModeManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/factorymode/TranThubFactoryModeManager;->mFactoryModeManager:Lcom/transsion/hubsdk/factorymode/TranFactoryModeManager;

    :cond_e
    return-void
.end method


# virtual methods
.method public isFactoryCode(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3

    .line 20
    iget-object p0, p0, Lcom/transsion/hubsdk/core/factorymode/TranThubFactoryModeManager;->mFactoryModeManager:Lcom/transsion/hubsdk/factorymode/TranFactoryModeManager;

    if-eqz p0, :cond_9

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/factorymode/TranFactoryModeManager;->isFactoryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
