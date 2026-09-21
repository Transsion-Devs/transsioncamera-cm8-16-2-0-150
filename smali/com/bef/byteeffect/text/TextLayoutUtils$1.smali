.class synthetic Lcom/bef/byteeffect/text/TextLayoutUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/text/TextLayoutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$bef$byteeffect$text$TextLayoutUtils$COLOR_TYPE:[I

.field static final synthetic $SwitchMap$com$bef$byteeffect$text$data$BitmapType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 460
    invoke-static {}, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->values()[Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bef/byteeffect/text/TextLayoutUtils$1;->$SwitchMap$com$bef$byteeffect$text$TextLayoutUtils$COLOR_TYPE:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_ALPHA:Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/bef/byteeffect/text/TextLayoutUtils$1;->$SwitchMap$com$bef$byteeffect$text$TextLayoutUtils$COLOR_TYPE:[I

    sget-object v3, Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;->COLOR_TYPE_RGBA:Lcom/bef/byteeffect/text/TextLayoutUtils$COLOR_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 60
    :catch_1d
    invoke-static {}, Lcom/bef/byteeffect/text/data/BitmapType;->values()[Lcom/bef/byteeffect/text/data/BitmapType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/bef/byteeffect/text/TextLayoutUtils$1;->$SwitchMap$com$bef$byteeffect$text$data$BitmapType:[I

    :try_start_26
    sget-object v3, Lcom/bef/byteeffect/text/data/BitmapType;->TEXT_BITMAP_SHAKE_ALPHA:Lcom/bef/byteeffect/text/data/BitmapType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/bef/byteeffect/text/TextLayoutUtils$1;->$SwitchMap$com$bef$byteeffect$text$data$BitmapType:[I

    sget-object v2, Lcom/bef/byteeffect/text/data/BitmapType;->TEXT_BITMAP_NEON_ALPHA:Lcom/bef/byteeffect/text/data/BitmapType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method
