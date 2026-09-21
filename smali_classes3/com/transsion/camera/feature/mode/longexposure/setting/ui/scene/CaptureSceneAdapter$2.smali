.class Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$2;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 142
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$2;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
