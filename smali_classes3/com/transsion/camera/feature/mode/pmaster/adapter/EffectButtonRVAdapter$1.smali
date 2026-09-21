.class Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

.field final synthetic val$position:I


# direct methods
.method public static synthetic $r8$lambda$s2_vl0Kbkx0DXKqj2PzV4Jpt3RY(Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;->lambda$onAnimationEnd$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;I)V
    .registers 3

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(I)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/SelectItemRVAdapter;->notifyItemChangedSelected(I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 49
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 50
    iget p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;->val$position:I

    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$1;I)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
