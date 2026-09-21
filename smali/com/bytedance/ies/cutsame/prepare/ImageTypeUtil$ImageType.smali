.class public final enum Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

.field public static final enum GIF:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

.field public static final enum JPG:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

.field public static final enum PNG:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

.field public static final enum UNKNOWN:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 24
    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->UNKNOWN:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    .line 25
    new-instance v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    const-string v2, "JPG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->JPG:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    .line 26
    new-instance v2, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    const-string v3, "PNG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->PNG:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    .line 27
    new-instance v3, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    const-string v4, "GIF"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->GIF:Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    .line 23
    filled-new-array {v0, v1, v2, v3}, [Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->$VALUES:[Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    .registers 2

    .line 23
    const-class v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;
    .registers 1

    .line 23
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->$VALUES:[Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    invoke-virtual {v0}, [Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ies/cutsame/prepare/ImageTypeUtil$ImageType;

    return-object v0
.end method
