.class public final synthetic Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    iput-object p2, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda1;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->$r8$lambda$N-KFwGF-TBISVyhtpznTisoMbPY(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Integer;)V

    return-void
.end method
