.class public final Lcom/transsion/camera/feature/setting/liveresult/LiveResultEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x1L
.end annotation


# instance fields
.field private mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResultEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_b

    .line 17
    new-instance v0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResultEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 19
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResultEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    const-string v0, "null cannot be cast to non-null type com.transsion.camera.app.common.setting.SettingBase"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 2

    .line 27
    const-class p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResultEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getName(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 23
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
