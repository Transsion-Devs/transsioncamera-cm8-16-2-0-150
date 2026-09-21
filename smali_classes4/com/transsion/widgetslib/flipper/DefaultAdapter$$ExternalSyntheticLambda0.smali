.class public final synthetic Lcom/transsion/widgetslib/flipper/DefaultAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/DefaultAdapter$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput p2, p0, Lcom/transsion/widgetslib/flipper/DefaultAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/DefaultAdapter$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget p0, p0, Lcom/transsion/widgetslib/flipper/DefaultAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/transsion/widgetslib/flipper/DefaultAdapter;->$r8$lambda$nqK0EWDx0kxLRQy4ESY5MyNDaPU(Lkotlin/jvm/functions/Function1;ILandroid/view/View;)V

    return-void
.end method
