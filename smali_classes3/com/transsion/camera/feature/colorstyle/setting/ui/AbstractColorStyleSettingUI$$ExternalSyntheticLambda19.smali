.class public final synthetic Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda19;->f$0:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda19;->f$0:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->$r8$lambda$oro1Njn-GRhlrny5VsJvvlqoKnw(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    return-void
.end method
