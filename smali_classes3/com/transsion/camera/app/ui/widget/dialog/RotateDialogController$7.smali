.class Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$scrollBarLayout:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .registers 3

    .line 499
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$7;->val$scrollBarLayout:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollUpdated(F)V
    .registers 2

    .line 501
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$7;->val$scrollBarLayout:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->onOverScrollUpdated(F)V

    return-void
.end method
