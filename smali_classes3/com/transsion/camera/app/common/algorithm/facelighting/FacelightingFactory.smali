.class public abstract Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mFacelightingClass:Ljava/lang/Class;

.field private static final mHumanEffectUiClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const-string v0, "com.megvii.facelightingsdk.FacelightingClient"

    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->mFacelightingClass:Ljava/lang/Class;

    .line 10
    const-string v0, "com.transsion.camera.ui.setting.humaneffect.HumanEffectSettingUIEntry"

    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->mHumanEffectUiClass:Ljava/lang/Class;

    return-void
.end method

.method public static getFacelightingClient()Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;
    .registers 5

    .line 13
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->mFacelightingClass:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 14
    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_19
    return-object v1
.end method

.method public static isFacelightingSupport()Z
    .registers 1

    .line 23
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->mFacelightingClass:Ljava/lang/Class;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->mHumanEffectUiClass:Ljava/lang/Class;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
