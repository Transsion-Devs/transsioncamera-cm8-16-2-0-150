.class public final synthetic Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    check-cast p1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/SimpleImageStyleSettingUI;->$r8$lambda$e9se5aRawSeaUZWlFVpj3lFSCDE(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;)V

    return-void
.end method
