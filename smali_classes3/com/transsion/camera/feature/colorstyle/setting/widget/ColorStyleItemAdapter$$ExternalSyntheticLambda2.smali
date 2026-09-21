.class public final synthetic Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->$r8$lambda$w5xLIM-F1-5H-EUM7uy-cWRClb4(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;ILandroid/view/View;)V

    return-void
.end method
