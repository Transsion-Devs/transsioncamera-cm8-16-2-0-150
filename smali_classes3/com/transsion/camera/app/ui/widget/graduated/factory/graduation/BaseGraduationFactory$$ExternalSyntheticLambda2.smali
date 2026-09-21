.class public final synthetic Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory$$ExternalSyntheticLambda2;->f$0:I

    check-cast p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->$r8$lambda$JW12SUZgBDugapCG6NYib1hfULs(ILcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    return-void
.end method
