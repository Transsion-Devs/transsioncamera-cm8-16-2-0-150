.class public final synthetic Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda9;
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

    iput p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda9;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda9;->f$0:I

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->$r8$lambda$Ax8_HvsXBGvXtUEXjWM4j6UeRII(ILcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    return-void
.end method
