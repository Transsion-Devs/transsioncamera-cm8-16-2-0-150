.class Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->initEditWaterMarkFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterSortWaterMark()V
    .registers 3

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->enterEditWaterMarkSortFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    return-void
.end method
