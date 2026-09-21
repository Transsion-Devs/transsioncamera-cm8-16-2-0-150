.class Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;I)V
    .registers 3

    .line 155
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 158
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_f

    .line 161
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->-$$Nest$fgetmEnable(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;)Z

    move-result p1

    if-nez p1, :cond_10

    :goto_f
    return-void

    .line 162
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$2;->val$position:I

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->-$$Nest$mupdateCurrentPosition(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;I)V

    return-void
.end method
