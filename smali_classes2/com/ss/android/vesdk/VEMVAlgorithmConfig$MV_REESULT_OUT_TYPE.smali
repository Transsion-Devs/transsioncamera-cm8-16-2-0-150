.class public final enum Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEMVAlgorithmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MV_REESULT_OUT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

.field public static final enum MV_REESULT_OUT_TYPE_IMAGE:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

.field public static final enum MV_REESULT_OUT_TYPE_IMAGE_AND_JSON:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

.field public static final enum MV_REESULT_OUT_TYPE_INVALID:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

.field public static final enum MV_REESULT_OUT_TYPE_JSON:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

.field public static final enum MV_REESULT_OUT_TYPE_VIDEO:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

.field public static final enum MV_REESULT_OUT_TYPE_VIDEO_AND_JSON:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 16
    new-instance v0, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    const-string v1, "MV_REESULT_OUT_TYPE_IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;->MV_REESULT_OUT_TYPE_IMAGE:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    .line 17
    new-instance v1, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    const-string v2, "MV_REESULT_OUT_TYPE_VIDEO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;->MV_REESULT_OUT_TYPE_VIDEO:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    .line 18
    new-instance v2, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    const-string v3, "MV_REESULT_OUT_TYPE_IMAGE_AND_JSON"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;->MV_REESULT_OUT_TYPE_IMAGE_AND_JSON:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    .line 19
    new-instance v3, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    const-string v4, "MV_REESULT_OUT_TYPE_VIDEO_AND_JSON"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;->MV_REESULT_OUT_TYPE_VIDEO_AND_JSON:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    .line 20
    new-instance v4, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    const-string v5, "MV_REESULT_OUT_TYPE_JSON"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;->MV_REESULT_OUT_TYPE_JSON:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    .line 21
    new-instance v5, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    const-string v6, "MV_REESULT_OUT_TYPE_INVALID"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;->MV_REESULT_OUT_TYPE_INVALID:Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    .line 14
    filled-new-array/range {v0 .. v5}, [Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;->$VALUES:[Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;
    .registers 2

    .line 14
    const-class v0, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;
    .registers 1

    .line 14
    sget-object v0, Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;->$VALUES:[Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_OUT_TYPE;

    return-object v0
.end method
