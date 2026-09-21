.class public final enum Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

.field public static final enum JPEG:Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

.field public static final enum MP4:Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;
    .registers 2

    .line 5
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->JPEG:Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    sget-object v1, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->MP4:Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 6
    new-instance v0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    const/4 v1, 0x0

    const-string v2, "image/jpeg"

    const-string v3, "JPEG"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->JPEG:Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    .line 7
    new-instance v0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    const/4 v1, 0x1

    const-string/jumbo v2, "video/mp4"

    const-string v3, "MP4"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->MP4:Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    .line 5
    invoke-static {}, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->$values()[Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->$VALUES:[Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;
    .registers 2

    .line 5
    const-class v0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;
    .registers 1

    .line 5
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->$VALUES:[Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/xmp/MimeType;->value:Ljava/lang/String;

    return-object p0
.end method
