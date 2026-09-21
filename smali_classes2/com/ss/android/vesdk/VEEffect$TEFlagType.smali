.class final enum Lcom/ss/android/vesdk/VEEffect$TEFlagType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TEFlagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEffect$TEFlagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEffect$TEFlagType;

.field public static final enum arSlamBitmap:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

.field public static final enum arSlamContent:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

.field public static final enum detectListenerFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

.field public static final enum effectAlgorithmInfo:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

.field public static final enum faceExtFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

.field public static final enum faceInfo:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

.field public static final enum landMarkDetectFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

.field public static final enum skeletonDetectFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

.field public static final enum smartBeautyFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

.field public static final enum stickerRequestFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 226
    new-instance v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    const-string v1, "faceInfo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEEffect$TEFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->faceInfo:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    .line 227
    new-instance v1, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    const-string v2, "faceExtFlag"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEEffect$TEFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->faceExtFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    .line 228
    new-instance v2, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    const-string v3, "detectListenerFlag"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEEffect$TEFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->detectListenerFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    .line 229
    new-instance v3, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    const-string v4, "smartBeautyFlag"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEEffect$TEFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->smartBeautyFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    .line 230
    new-instance v4, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    const-string v5, "arSlamBitmap"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEEffect$TEFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->arSlamBitmap:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    .line 231
    new-instance v5, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    const-string v6, "arSlamContent"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VEEffect$TEFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->arSlamContent:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    .line 232
    new-instance v6, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    const-string v7, "landMarkDetectFlag"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ss/android/vesdk/VEEffect$TEFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->landMarkDetectFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    .line 233
    new-instance v7, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    const-string v8, "stickerRequestFlag"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ss/android/vesdk/VEEffect$TEFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->stickerRequestFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    .line 234
    new-instance v8, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    const-string v9, "effectAlgorithmInfo"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/ss/android/vesdk/VEEffect$TEFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->effectAlgorithmInfo:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    .line 235
    new-instance v9, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    const-string v10, "skeletonDetectFlag"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/ss/android/vesdk/VEEffect$TEFlagType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->skeletonDetectFlag:Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    .line 225
    filled-new-array/range {v0 .. v9}, [Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->$VALUES:[Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEffect$TEFlagType;
    .registers 2

    .line 225
    const-class v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEffect$TEFlagType;
    .registers 1

    .line 225
    sget-object v0, Lcom/ss/android/vesdk/VEEffect$TEFlagType;->$VALUES:[Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEffect$TEFlagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEffect$TEFlagType;

    return-object v0
.end method
