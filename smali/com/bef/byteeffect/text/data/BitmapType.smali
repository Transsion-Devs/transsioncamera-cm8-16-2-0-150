.class public final enum Lcom/bef/byteeffect/text/data/BitmapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/byteamazing/annotation/EffectKeep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bef/byteeffect/text/data/BitmapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bef/byteeffect/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_NEON_ALPHA:Lcom/bef/byteeffect/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_NONE:Lcom/bef/byteeffect/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_SHAKE_ALPHA:Lcom/bef/byteeffect/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_SINGLE_CHAR_ALPHA:Lcom/bef/byteeffect/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_TYPE_ALPHA:Lcom/bef/byteeffect/text/data/BitmapType;

.field public static final enum TEXT_BITMAP_TYPE_RGBA8888:Lcom/bef/byteeffect/text/data/BitmapType;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 7
    new-instance v0, Lcom/bef/byteeffect/text/data/BitmapType;

    const/4 v1, -0x1

    const-string v2, "TEXT_BITMAP_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/bef/byteeffect/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bef/byteeffect/text/data/BitmapType;->TEXT_BITMAP_NONE:Lcom/bef/byteeffect/text/data/BitmapType;

    .line 8
    new-instance v1, Lcom/bef/byteeffect/text/data/BitmapType;

    const-string v2, "TEXT_BITMAP_TYPE_ALPHA"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/bef/byteeffect/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bef/byteeffect/text/data/BitmapType;->TEXT_BITMAP_TYPE_ALPHA:Lcom/bef/byteeffect/text/data/BitmapType;

    .line 9
    new-instance v2, Lcom/bef/byteeffect/text/data/BitmapType;

    const-string v3, "TEXT_BITMAP_TYPE_RGBA8888"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/bef/byteeffect/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/bef/byteeffect/text/data/BitmapType;->TEXT_BITMAP_TYPE_RGBA8888:Lcom/bef/byteeffect/text/data/BitmapType;

    .line 10
    new-instance v3, Lcom/bef/byteeffect/text/data/BitmapType;

    const-string v4, "TEXT_BITMAP_NEON_ALPHA"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/bef/byteeffect/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bef/byteeffect/text/data/BitmapType;->TEXT_BITMAP_NEON_ALPHA:Lcom/bef/byteeffect/text/data/BitmapType;

    .line 11
    new-instance v4, Lcom/bef/byteeffect/text/data/BitmapType;

    const-string v5, "TEXT_BITMAP_SINGLE_CHAR_ALPHA"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/bef/byteeffect/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bef/byteeffect/text/data/BitmapType;->TEXT_BITMAP_SINGLE_CHAR_ALPHA:Lcom/bef/byteeffect/text/data/BitmapType;

    .line 12
    new-instance v5, Lcom/bef/byteeffect/text/data/BitmapType;

    const-string v6, "TEXT_BITMAP_SHAKE_ALPHA"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/bef/byteeffect/text/data/BitmapType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bef/byteeffect/text/data/BitmapType;->TEXT_BITMAP_SHAKE_ALPHA:Lcom/bef/byteeffect/text/data/BitmapType;

    .line 5
    filled-new-array/range {v0 .. v5}, [Lcom/bef/byteeffect/text/data/BitmapType;

    move-result-object v0

    sput-object v0, Lcom/bef/byteeffect/text/data/BitmapType;->$VALUES:[Lcom/bef/byteeffect/text/data/BitmapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/bef/byteeffect/text/data/BitmapType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/bef/byteeffect/text/data/BitmapType;
    .registers 6
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    .line 21
    invoke-static {}, Lcom/bef/byteeffect/text/data/BitmapType;->values()[Lcom/bef/byteeffect/text/data/BitmapType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 22
    iget v4, v3, Lcom/bef/byteeffect/text/data/BitmapType;->value:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 26
    :cond_12
    sget-object p0, Lcom/bef/byteeffect/text/data/BitmapType;->TEXT_BITMAP_NONE:Lcom/bef/byteeffect/text/data/BitmapType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bef/byteeffect/text/data/BitmapType;
    .registers 2

    .line 5
    const-class v0, Lcom/bef/byteeffect/text/data/BitmapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bef/byteeffect/text/data/BitmapType;

    return-object p0
.end method

.method public static values()[Lcom/bef/byteeffect/text/data/BitmapType;
    .registers 1

    .line 5
    sget-object v0, Lcom/bef/byteeffect/text/data/BitmapType;->$VALUES:[Lcom/bef/byteeffect/text/data/BitmapType;

    invoke-virtual {v0}, [Lcom/bef/byteeffect/text/data/BitmapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bef/byteeffect/text/data/BitmapType;

    return-object v0
.end method
