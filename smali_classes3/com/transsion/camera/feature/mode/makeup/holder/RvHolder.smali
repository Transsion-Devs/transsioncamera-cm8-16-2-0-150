.class public abstract Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;
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
.field protected final mDisableStateList:Landroid/content/res/ColorStateList;

.field protected final mStateList:Landroid/content/res/ColorStateList;

.field protected final mStateListBlack:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x10100a7

    .line 13
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->PRESSED_STATE_SET:[I

    const v0, 0x10100a1

    .line 17
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 21
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->NORMAL_STATE_SET:[I

    .line 23
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->sStates:[[I

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;)V
    .registers 7

    .line 33
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 36
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_disable_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 37
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 38
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 39
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 41
    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->sStates:[[I

    filled-new-array {v1, v2}, [I

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mStateList:Landroid/content/res/ColorStateList;

    .line 42
    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-direct {v2, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mDisableStateList:Landroid/content/res/ColorStateList;

    .line 43
    new-instance v0, Landroid/content/res/ColorStateList;

    filled-new-array {v1, p1}, [I

    move-result-object p1

    invoke-direct {v0, v4, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/holder/RvHolder;->mStateListBlack:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public abstract bindHolder(Ljava/lang/Object;IIZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIZZ)V"
        }
    .end annotation
.end method
