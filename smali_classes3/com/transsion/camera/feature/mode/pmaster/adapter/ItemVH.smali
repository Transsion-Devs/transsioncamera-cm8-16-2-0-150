.class public abstract Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final sStates:[[I


# instance fields
.field public mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

.field public mIconBackgroundView:Landroid/widget/FrameLayout;

.field public mIconView:Landroid/widget/ImageView;

.field public mProgressBar:Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

.field private final mStateList:Landroid/content/res/ColorStateList;

.field private final mStateListBlack:Landroid/content/res/ColorStateList;

.field public mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x10100a7

    .line 16
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->PRESSED_STATE_SET:[I

    const v0, 0x10100a1

    .line 20
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 24
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->NORMAL_STATE_SET:[I

    .line 26
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->sStates:[[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 6

    .line 40
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 42
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 43
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 44
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 45
    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->sStates:[[I

    filled-new-array {v0, v1}, [I

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mStateList:Landroid/content/res/ColorStateList;

    .line 46
    new-instance v1, Landroid/content/res/ColorStateList;

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-direct {v1, v3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mStateListBlack:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public abstract bindHolder(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public setLowLightTextColor(Z)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mStateListBlack:Landroid/content/res/ColorStateList;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mStateList:Landroid/content/res/ColorStateList;

    :goto_b
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    return-void
.end method

.method public updateRotation(IIZ)V
    .registers 4

    return-void
.end method
