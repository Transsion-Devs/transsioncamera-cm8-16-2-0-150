.class public final synthetic Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

.field public final synthetic f$1:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;ILandroid/view/accessibility/AccessibilityManager;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;->f$3:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;->f$3:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->$r8$lambda$51bAxyGKFxKAG2scepRAQX0Wytg(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;ILandroid/view/accessibility/AccessibilityManager;Landroid/view/View;)V

    return-void
.end method
