.class public Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private detailName:Ljava/lang/String;

.field private imgResourceId:I

.field private modeName:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->text:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->imgResourceId:I

    .line 14
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->modeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->text:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->detailName:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->imgResourceId:I

    .line 27
    iput-object p4, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->modeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->text:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->detailName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->modeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetailName()Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->detailName:Ljava/lang/String;

    return-object p0
.end method

.method public getImgResourceId()I
    .registers 1

    .line 39
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->imgResourceId:I

    return p0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->modeName:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setDetailName(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->detailName:Ljava/lang/String;

    return-void
.end method

.method public setImgResourceId(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->imgResourceId:I

    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->modeName:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultBean{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imgResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->imgResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", detailName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->detailName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modeName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->modeName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
