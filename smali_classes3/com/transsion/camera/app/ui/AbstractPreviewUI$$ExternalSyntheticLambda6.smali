.class public final synthetic Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IAnimProgressListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;->f$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;->f$2:I

    iput p4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;->f$3:I

    iput p5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;->f$4:I

    return-void
.end method


# virtual methods
.method public final onAnimProgress(F)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;->f$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;->f$1:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;->f$2:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;->f$3:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$$ExternalSyntheticLambda6;->f$4:I

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->$r8$lambda$ZLcoxU-QLeGEYh89Cr67AB9Re5Q(Lcom/transsion/camera/app/ui/AbstractPreviewUI;IIIIF)V

    return-void
.end method
