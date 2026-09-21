.class public Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mPage:I
    .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private mTemplateItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->mTemplateItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    return-void
.end method


# virtual methods
.method public getPage()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->mPage:I

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getTemplateItem()Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->mTemplateItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    return-object p0
.end method

.method public setPage(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    .line 25
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->mPage:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setTemplateItem(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->mTemplateItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    return-void
.end method
