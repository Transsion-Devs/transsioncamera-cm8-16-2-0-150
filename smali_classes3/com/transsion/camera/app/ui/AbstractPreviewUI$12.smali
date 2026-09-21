.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;->setPreviewCoverVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$previewCover:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/view/View;I)V
    .registers 4

    .line 2166
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$12;->val$previewCover:Landroid/view/View;

    iput p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$12;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$12;->val$previewCover:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$12;->val$visibility:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
