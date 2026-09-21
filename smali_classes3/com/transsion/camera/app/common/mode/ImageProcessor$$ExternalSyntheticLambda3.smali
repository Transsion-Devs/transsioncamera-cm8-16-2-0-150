.class public final synthetic Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iput-wide p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$$ExternalSyntheticLambda3;->f$1:J

    invoke-static {v0, v1, v2, p1, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->$r8$lambda$qOFPgTIuotajQvjZlmE8kjqKthM(Lcom/transsion/camera/app/common/mode/ImageProcessor;JLjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
