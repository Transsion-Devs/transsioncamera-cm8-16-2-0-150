.class public final enum Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VERuntimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HwEncFallBackMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

.field public static final enum AUDIO_ENC_ENCODING_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

.field public static final enum AUDIO_ENC_INIT_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

.field public static final enum HW_ENC_FALLBACK_NONE:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

.field public static final enum VIDEO_ENC_ENCODING_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

.field public static final enum VIDEO_ENC_INIT_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 28
    new-instance v0, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    const-string v1, "HW_ENC_FALLBACK_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->HW_ENC_FALLBACK_NONE:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    .line 30
    new-instance v1, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    const-string v2, "VIDEO_ENC_INIT_FALLBACK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->VIDEO_ENC_INIT_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    .line 32
    new-instance v2, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    const-string v3, "AUDIO_ENC_INIT_FALLBACK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->AUDIO_ENC_INIT_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    .line 34
    new-instance v3, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    const-string v4, "VIDEO_ENC_ENCODING_FALLBACK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->VIDEO_ENC_ENCODING_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    .line 36
    new-instance v4, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    const-string v5, "AUDIO_ENC_ENCODING_FALLBACK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->AUDIO_ENC_ENCODING_FALLBACK:Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    .line 26
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->$VALUES:[Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;
    .registers 2

    .line 26
    const-class v0, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;
    .registers 1

    .line 26
    sget-object v0, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->$VALUES:[Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/ss/android/vesdk/VERuntimeConfig$HwEncFallBackMode;->mValue:I

    return p0
.end method
