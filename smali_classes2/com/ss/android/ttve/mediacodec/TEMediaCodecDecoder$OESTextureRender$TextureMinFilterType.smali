.class final enum Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TextureMinFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

.field public static final enum LINEAR:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

.field public static final enum NEAREST:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

.field public static final enum UNKNOWN:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1891
    new-instance v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->UNKNOWN:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    .line 1892
    new-instance v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    const-string v2, "NEAREST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->NEAREST:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    .line 1893
    new-instance v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    const-string v3, "LINEAR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->LINEAR:Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    .line 1890
    filled-new-array {v0, v1, v2}, [Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->$VALUES:[Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1890
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;
    .registers 2

    .line 1890
    const-class v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;
    .registers 1

    .line 1890
    sget-object v0, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->$VALUES:[Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder$OESTextureRender$TextureMinFilterType;

    return-object v0
.end method
