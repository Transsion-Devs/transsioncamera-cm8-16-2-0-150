.class public final synthetic Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->$r8$lambda$PoTyLXkfvG1oG8PeD35TNQAhWVo(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
