.class public final synthetic Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(IILandroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->$r8$lambda$5BQgUhkyGqFQXbft9AWSx20hJSI(IILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    return-void
.end method
