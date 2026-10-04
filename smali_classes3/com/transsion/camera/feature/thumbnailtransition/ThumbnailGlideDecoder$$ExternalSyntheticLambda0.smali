.class public final synthetic Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:[B

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[BI)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder$$ExternalSyntheticLambda0;->f$1:[B

    iput p3, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder$$ExternalSyntheticLambda0;->f$1:[B

    iget p0, p0, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailGlideDecoder;->$r8$lambda$TI7xgz0tENIcJQ2kz0UsKMZf_gQ(Landroid/content/Context;[BI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
