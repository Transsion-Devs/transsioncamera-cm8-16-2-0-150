.class public Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo$VlogHintType;
    }
.end annotation


# static fields
.field public static final VLOG_INFO_TYPE_ALWAYS:I = 0x0

.field public static final VLOG_INFO_TYPE_AUTO_HIDE:I = 0x1


# instance fields
.field private mHighlight:Z

.field private mMessage:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->mType:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->mType:I

    return p0
.end method

.method public isHighlight()Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->mHighlight:Z

    return p0
.end method

.method public setHighlight(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->mHighlight:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VlogHintInfo {mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
