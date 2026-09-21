.class public final Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;

.field private static config:Lcom/bytedance/ies/cutsame/prepare/VEConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;

    .line 10
    new-instance v1, Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    const/16 v9, 0x7f

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;-><init>(ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->config:Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/bytedance/ies/cutsame/prepare/VEConfig;
    .registers 1

    .line 10
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->config:Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    return-object p0
.end method

.method public final getEncodeProfile()Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;
    .registers 3

    .line 13
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->config:Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getEncodeProfile()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2e06d1

    if-eq v0, v1, :cond_32

    const v1, 0x30dda2

    if-eq v0, v1, :cond_26

    const v1, 0x3305b9

    if-eq v0, v1, :cond_1a

    goto :goto_3a

    :cond_1a
    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_3a

    .line 16
    :cond_23
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0

    .line 13
    :cond_26
    const-string v0, "high"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_3a

    .line 14
    :cond_2f
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0

    .line 13
    :cond_32
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    .line 17
    :goto_3a
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0

    .line 15
    :cond_3d
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    return-object p0
.end method

.method public final setConfig(Lcom/bytedance/ies/cutsame/prepare/VEConfig;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sput-object p1, Lcom/bytedance/ies/cutsame/prepare/VESDKConfigHelper;->config:Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    return-void
.end method
