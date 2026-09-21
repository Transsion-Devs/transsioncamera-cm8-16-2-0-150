.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$-XPoQSwwv2A4ze4P0EKrDU2023s(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$1;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;)V
    .registers 2

    .line 1882
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$1;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .registers 1

    .line 1887
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$1;->this$1:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1885
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1886
    new-instance p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$1;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
