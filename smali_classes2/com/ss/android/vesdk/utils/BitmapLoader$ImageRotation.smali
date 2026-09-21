.class public final enum Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/utils/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageRotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

.field public static final enum INVALID:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

.field public static final enum ROTATION_0:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

.field public static final enum ROTATION_180:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

.field public static final enum ROTATION_270:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

.field public static final enum ROTATION_90:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 32
    new-instance v0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const/4 v1, -0x1

    const-string v2, "INVALID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->INVALID:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    new-instance v1, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const-string v2, "ROTATION_0"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->ROTATION_0:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    new-instance v2, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const/4 v3, 0x2

    const/16 v4, 0x5a

    const-string v5, "ROTATION_90"

    invoke-direct {v2, v5, v3, v4}, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->ROTATION_90:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    new-instance v3, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const/4 v4, 0x3

    const/16 v5, 0xb4

    const-string v6, "ROTATION_180"

    invoke-direct {v3, v6, v4, v5}, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->ROTATION_180:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    new-instance v4, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const/4 v5, 0x4

    const/16 v6, 0x10e

    const-string v7, "ROTATION_270"

    invoke-direct {v4, v7, v5, v6}, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->ROTATION_270:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    .line 30
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->$VALUES:[Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;
    .registers 2

    .line 30
    const-class v0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;
    .registers 1

    .line 30
    sget-object v0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->$VALUES:[Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    return-object v0
.end method


# virtual methods
.method public getRotation()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->value:I

    return p0
.end method
