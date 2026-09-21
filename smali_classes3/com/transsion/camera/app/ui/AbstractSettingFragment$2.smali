.class Lcom/transsion/camera/app/ui/AbstractSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractSettingFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)V
    .registers 2

    .line 510
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment$2;->this$0:Lcom/transsion/camera/app/ui/AbstractSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_c

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment$2;->this$0:Lcom/transsion/camera/app/ui/AbstractSettingFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->-$$Nest$fgetlistView(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_c
    return-void
.end method
