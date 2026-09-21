.class Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 346
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$4;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$4;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_8

    const/4 p1, 0x0

    .line 349
    invoke-interface {p0, p1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_8
    return-void
.end method
