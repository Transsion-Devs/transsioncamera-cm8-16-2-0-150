.class public final Lcom/bytedance/ies/cutsame/prepare/VEConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/prepare/VEConfig$CREATOR;
    }
.end annotation


# static fields
.field public static final COMPILE_SIZE_1080P:I = 0x1

.field public static final COMPILE_SIZE_720P:I

.field public static final CREATOR:Lcom/bytedance/ies/cutsame/prepare/VEConfig$CREATOR;


# instance fields
.field private final bpsConfig:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bps_config"
    .end annotation
.end field

.field private final bpsGenerator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final defaultBps:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bps"
    .end annotation
.end field

.field private final encodeProfile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encodeProfile"
    .end annotation
.end field

.field private final featureConfig:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feature_switch"
    .end annotation
.end field

.field private final fps:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fps"
    .end annotation
.end field

.field private final gopSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gopSize"
    .end annotation
.end field

.field private final hardware:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hw"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/VEConfig$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/VEConfig$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->CREATOR:Lcom/bytedance/ies/cutsame/prepare/VEConfig$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .line 0
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;-><init>(ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 15

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v4, v2

    goto :goto_10

    :cond_f
    move v4, v1

    .line 52
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 54
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->CREATOR:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig$CREATOR;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    if-nez v0, :cond_35

    .line 55
    new-instance v7, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_36

    :cond_35
    move-object v7, v0

    .line 56
    :goto_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_42

    const-string v0, "high"

    :cond_42
    move-object v9, v0

    .line 58
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->CREATOR:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig$CREATOR;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    if-nez p1, :cond_5c

    .line 59
    new-instance p1, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-direct {p1, v1, v1, v0, v2}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_5c
    move-object v3, p0

    move-object v10, p1

    .line 50
    invoke-direct/range {v3 .. v10}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;-><init>(ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;)V

    return-void
.end method

.method public constructor <init>(ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;)V
    .registers 9

    const-string v0, "bpsConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeProfile"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureConfig"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->hardware:Z

    .line 16
    iput p2, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->fps:I

    .line 18
    iput p3, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->gopSize:I

    .line 20
    iput-object p4, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->bpsConfig:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    .line 22
    iput p5, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->defaultBps:I

    .line 24
    iput-object p6, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->encodeProfile:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->featureConfig:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    .line 30
    new-instance p1, Lcom/bytedance/ies/cutsame/prepare/VEConfig$bpsGenerator$1;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig$bpsGenerator$1;-><init>(Lcom/bytedance/ies/cutsame/prepare/VEConfig;)V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->bpsGenerator:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_5

    const/4 p1, 0x1

    :cond_5
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_b

    const/16 p2, 0x1e

    :cond_b
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_11

    const/16 p3, 0x23

    :cond_11
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_20

    .line 21
    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;-><init>(IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p4, v0

    :cond_20
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_27

    const p5, 0x989680

    :cond_27
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_2d

    .line 25
    const-string p6, "baseline"

    :cond_2d
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_39

    .line 27
    new-instance p7, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    const/4 p8, 0x3

    const/4 p9, 0x0

    const/4 v0, 0x0

    invoke-direct {p7, v0, v0, p8, p9}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_39
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    .line 13
    invoke-direct/range {p2 .. p9}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;-><init>(ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/prepare/VEConfig;ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/prepare/VEConfig;
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-boolean p1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->hardware:Z

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget p2, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->fps:I

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget p3, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->gopSize:I

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-object p4, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->bpsConfig:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget p5, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->defaultBps:I

    :cond_1e
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_24

    iget-object p6, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->encodeProfile:Ljava/lang/String;

    :cond_24
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2a

    iget-object p7, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->featureConfig:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    :cond_2a
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->copy(ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;)Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->hardware:Z

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->fps:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->gopSize:I

    return p0
.end method

.method public final component4()Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->bpsConfig:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    return-object p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->defaultBps:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->encodeProfile:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->featureConfig:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    return-object p0
.end method

.method public final copy(ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;)Lcom/bytedance/ies/cutsame/prepare/VEConfig;
    .registers 16

    const-string p0, "bpsConfig"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "encodeProfile"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "featureConfig"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;-><init>(ZIILcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;ILjava/lang/String;Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/prepare/VEConfig;

    iget-boolean v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->hardware:Z

    iget-boolean v3, p1, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->hardware:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->fps:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->fps:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->gopSize:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->gopSize:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->bpsConfig:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->bpsConfig:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->defaultBps:I

    iget v3, p1, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->defaultBps:I

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->encodeProfile:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->encodeProfile:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v2

    :cond_3e
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->featureConfig:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->featureConfig:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    return v2

    :cond_49
    return v0
.end method

.method public final getBpsConfig()Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->bpsConfig:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    return-object p0
.end method

.method public final getBpsGenerator()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->bpsGenerator:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getDefaultBps()I
    .registers 1

    .line 23
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->defaultBps:I

    return p0
.end method

.method public final getEncodeProfile()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->encodeProfile:Ljava/lang/String;

    return-object p0
.end method

.method public final getFeatureConfig()Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->featureConfig:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    return-object p0
.end method

.method public final getFps()I
    .registers 1

    .line 17
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->fps:I

    return p0
.end method

.method public final getGopSize()I
    .registers 1

    .line 19
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->gopSize:I

    return p0
.end method

.method public final getHardware()Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->hardware:Z

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->hardware:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->fps:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->gopSize:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->bpsConfig:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->defaultBps:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->encodeProfile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->featureConfig:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEConfig(hardware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->hardware:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gopSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->gopSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bpsConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->bpsConfig:Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultBps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->defaultBps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodeProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->encodeProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", featureConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->featureConfig:Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getHardware()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getFps()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getGopSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getBpsConfig()Lcom/bytedance/ies/cutsame/prepare/VECompileBpsConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getDefaultBps()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getEncodeProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/VEConfig;->getFeatureConfig()Lcom/bytedance/ies/cutsame/prepare/FeatureConfig;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
