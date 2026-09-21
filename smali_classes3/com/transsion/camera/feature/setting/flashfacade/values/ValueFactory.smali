.class final Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;
    .registers 4

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_98

    goto :goto_4e

    :sswitch_c
    const-string v0, "ringscreenlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4e

    :cond_15
    const/4 v1, 0x5

    goto :goto_4e

    :sswitch_17
    const-string/jumbo v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_4e

    :cond_21
    const/4 v1, 0x4

    goto :goto_4e

    :sswitch_23
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_4e

    :cond_2c
    const/4 v1, 0x3

    goto :goto_4e

    :sswitch_2e
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_4e

    :cond_37
    const/4 v1, 0x2

    goto :goto_4e

    :sswitch_39
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_4e

    :cond_42
    const/4 v1, 0x1

    goto :goto_4e

    :sswitch_44
    const-string v0, "screenflash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    packed-switch v1, :pswitch_data_b2

    .line 65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :pswitch_68
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueRingScreenLight;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueRingScreenLight;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    return-object v0

    .line 53
    :pswitch_70
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueTorch;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueTorch;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    return-object v0

    .line 49
    :pswitch_78
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueAuto;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    return-object v0

    .line 41
    :pswitch_80
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueOff;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueOff;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    return-object v0

    .line 45
    :pswitch_88
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueOn;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueOn;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    return-object v0

    .line 61
    :pswitch_90
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueScreenFlash;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/ValueFactory;->mFlashConfig:Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueScreenFlash;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    return-object v0

    :sswitch_data_98
    .sparse-switch
        -0x2326cfc -> :sswitch_44
        0xddf -> :sswitch_39
        0x1ad6f -> :sswitch_2e
        0x2dddaf -> :sswitch_23
        0x696d3fc -> :sswitch_17
        0x3a942ffa -> :sswitch_c
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_90
        :pswitch_88
        :pswitch_80
        :pswitch_78
        :pswitch_70
        :pswitch_68
    .end packed-switch
.end method
