.class public final enum Lcom/ss/android/vesdk/VEUtils$ImgType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEUtils$ImgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEUtils$ImgType;

.field public static final enum Img_jpeg:Lcom/ss/android/vesdk/VEUtils$ImgType;

.field public static final enum Img_png:Lcom/ss/android/vesdk/VEUtils$ImgType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 2253
    new-instance v0, Lcom/ss/android/vesdk/VEUtils$ImgType;

    const-string v1, "Img_png"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUtils$ImgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEUtils$ImgType;->Img_png:Lcom/ss/android/vesdk/VEUtils$ImgType;

    new-instance v1, Lcom/ss/android/vesdk/VEUtils$ImgType;

    const-string v2, "Img_jpeg"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEUtils$ImgType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEUtils$ImgType;->Img_jpeg:Lcom/ss/android/vesdk/VEUtils$ImgType;

    .line 2252
    filled-new-array {v0, v1}, [Lcom/ss/android/vesdk/VEUtils$ImgType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEUtils$ImgType;->$VALUES:[Lcom/ss/android/vesdk/VEUtils$ImgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$ImgType;
    .registers 2

    .line 2252
    const-class v0, Lcom/ss/android/vesdk/VEUtils$ImgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEUtils$ImgType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEUtils$ImgType;
    .registers 1

    .line 2252
    sget-object v0, Lcom/ss/android/vesdk/VEUtils$ImgType;->$VALUES:[Lcom/ss/android/vesdk/VEUtils$ImgType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEUtils$ImgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEUtils$ImgType;

    return-object v0
.end method
