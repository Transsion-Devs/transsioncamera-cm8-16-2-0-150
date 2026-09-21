.class public final enum Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

.field public static final enum FACE_ATTR_FEMALE_SCORE_RANGE:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

.field public static final enum FACE_ATTR_FORCE_DETEC:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

.field public static final enum FACE_ATTR_MALE_SCORE_RANGE:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

.field public static final enum FACE_PARAM_BASE_SMOOTH_LEVEL:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

.field public static final enum FACE_PARAM_EXTRA_SMOOTH_LEVEL:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

.field public static final enum FACE_PARAM_USE_FILTER_V2:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

.field public static final enum SKELETON_FORCE_DETECT:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 10
    new-instance v0, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const-string v3, "FACE_PARAM_BASE_SMOOTH_LEVEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->FACE_PARAM_BASE_SMOOTH_LEVEL:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    .line 13
    new-instance v1, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    const/4 v2, 0x1

    const/16 v3, 0x65

    const-string v4, "FACE_PARAM_EXTRA_SMOOTH_LEVEL"

    invoke-direct {v1, v4, v2, v3}, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->FACE_PARAM_EXTRA_SMOOTH_LEVEL:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    .line 16
    new-instance v2, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    const/4 v3, 0x2

    const/16 v4, 0x66

    const-string v5, "FACE_ATTR_MALE_SCORE_RANGE"

    invoke-direct {v2, v5, v3, v4}, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->FACE_ATTR_MALE_SCORE_RANGE:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    .line 19
    new-instance v3, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    const/4 v4, 0x3

    const/16 v5, 0x67

    const-string v6, "FACE_ATTR_FEMALE_SCORE_RANGE"

    invoke-direct {v3, v6, v4, v5}, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->FACE_ATTR_FEMALE_SCORE_RANGE:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    .line 22
    new-instance v4, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    const/4 v5, 0x4

    const/16 v6, 0x68

    const-string v7, "FACE_ATTR_FORCE_DETEC"

    invoke-direct {v4, v7, v5, v6}, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->FACE_ATTR_FORCE_DETEC:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    .line 25
    new-instance v5, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    const/4 v6, 0x5

    const/16 v7, 0x69

    const-string v8, "SKELETON_FORCE_DETECT"

    invoke-direct {v5, v8, v6, v7}, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->SKELETON_FORCE_DETECT:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    .line 28
    new-instance v6, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    const/4 v7, 0x6

    const/16 v8, 0x6b

    const-string v9, "FACE_PARAM_USE_FILTER_V2"

    invoke-direct {v6, v9, v7, v8}, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->FACE_PARAM_USE_FILTER_V2:Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    .line 8
    filled-new-array/range {v0 .. v6}, [Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->$VALUES:[Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;
    .registers 2

    .line 8
    const-class v0, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;
    .registers 1

    .line 8
    sget-object v0, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->$VALUES:[Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->value:I

    return p0
.end method
