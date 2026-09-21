.class public Lcom/transsion/camera/feature/setting/portraitarchitecture/PortraitArchitectureEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x90L
.end annotation


# instance fields
.field private mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitarchitecture/PortraitArchitectureEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/transsion/camera/feature/setting/portraitarchitecture/PortraitArchitecture;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/portraitarchitecture/PortraitArchitecture;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/portraitarchitecture/PortraitArchitectureEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 29
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitarchitecture/PortraitArchitectureEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 39
    const-class p0, Lcom/transsion/camera/feature/setting/portraitarchitecture/PortraitArchitectureEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 34
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 1

    .line 44
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPortraitArchSupport:Z

    return p0
.end method
