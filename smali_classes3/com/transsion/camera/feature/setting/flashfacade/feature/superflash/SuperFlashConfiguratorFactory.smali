.class final Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorFactory;
.super Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory<",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;",
        "Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getConfigurator(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfigurator;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlashConfiguratorFactory;->getConfigurator(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;

    move-result-object p0

    return-object p0
.end method

.method protected getConfigurator(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/BaseSuperFlashConfigurator;
    .registers 4

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_a4

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
    packed-switch v1, :pswitch_data_be

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
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorRingScreenLight;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorRingScreenLight;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V

    return-object p1

    .line 53
    :pswitch_72
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorTorch;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorTorch;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V

    return-object p1

    .line 49
    :pswitch_7c
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorAuto;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorAuto;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V

    return-object p1

    .line 41
    :pswitch_86
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorOff;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorOff;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V

    return-object p1

    .line 45
    :pswitch_90
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorOn;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorOn;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V

    return-object p1

    .line 61
    :pswitch_9a
    new-instance p1, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorScreenFlash;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseConfiguratorFactory;->mFlashFeature:Lcom/transsion/camera/feature/setting/flashfacade/feature/BaseFlashFeature;

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/configurator/ConfiguratorScreenFlash;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/feature/superflash/SuperFlash;)V

    return-object p1

    :sswitch_data_a4
    .sparse-switch
        -0x2326cfc -> :sswitch_44
        0xddf -> :sswitch_39
        0x1ad6f -> :sswitch_2e
        0x2dddaf -> :sswitch_23
        0x696d3fc -> :sswitch_17
        0x3a942ffa -> :sswitch_c
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_90
        :pswitch_86
        :pswitch_7c
        :pswitch_72
        :pswitch_68
    .end packed-switch
.end method
