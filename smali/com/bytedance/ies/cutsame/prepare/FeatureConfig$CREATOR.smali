.class public final Lcom/bytedance/ies/cutsame/prepare/FeatureConfig$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CI_ByteDanceKotlinRules_Class_Camel_Case"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;
    .registers 2

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;
    .registers 2

    .line 28
    new-array p0, p1, [Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig$CREATOR;->newArray(I)[Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    move-result-object p0

    return-object p0
.end method
