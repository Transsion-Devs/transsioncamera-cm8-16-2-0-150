.class Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;Lcom/transsion/camera/app/ui/ModeOrderEditorFragment-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;-><init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 167
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->-$$Nest$fgetmEditorModeItemLeft(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->-$$Nest$fgetmEditorModeItemLeft(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
