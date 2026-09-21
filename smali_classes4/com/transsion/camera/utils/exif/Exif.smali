.class public abstract Lcom/transsion/camera/utils/exif/Exif;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Exif"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/exif/Exif;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static getExif([B)Lcom/transsion/camera/utils/exif/ExifInterface;
    .registers 4

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/exif/ExifInterface;

    invoke-direct {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;-><init>()V

    .line 23
    :try_start_5
    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->readExif([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception p0

    .line 25
    sget-object v1, Lcom/transsion/camera/utils/exif/Exif;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Failed to read EXIF data"

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
