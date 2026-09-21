.class public Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/OnekeyEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessConfig"
.end annotation


# instance fields
.field cvDetectFrames:I

.field faceList:[Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;

.field faceNum:I

.field height:I

.field initDecayFrames:I

.field isFirstFrame:Z

.field isProtectFace:Z

.field iso:I

.field iso_max:I

.field iso_min:I

.field width:I


# direct methods
.method public constructor <init>(IIIIIIZZII[Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;)V
    .registers 12

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso:I

    .line 112
    iput p2, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_max:I

    .line 113
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_min:I

    .line 114
    iput p4, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->cvDetectFrames:I

    .line 115
    iput p5, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->width:I

    .line 116
    iput p6, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->height:I

    .line 117
    iput-boolean p7, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isFirstFrame:Z

    .line 118
    iput-boolean p8, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isProtectFace:Z

    .line 119
    iput p9, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->initDecayFrames:I

    .line 120
    iput p10, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceNum:I

    .line 121
    iput-object p11, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceList:[Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;

    return-void
.end method


# virtual methods
.method public getCvDetectFrames()I
    .registers 1

    .line 149
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->cvDetectFrames:I

    return p0
.end method

.method public getFaceList()[Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceList:[Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;

    return-object p0
.end method

.method public getFaceNum()I
    .registers 1

    .line 197
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceNum:I

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 165
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->height:I

    return p0
.end method

.method public getInitDecayFrames()I
    .registers 1

    .line 189
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->initDecayFrames:I

    return p0
.end method

.method public getIso()I
    .registers 1

    .line 125
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso:I

    return p0
.end method

.method public getIso_max()I
    .registers 1

    .line 133
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_max:I

    return p0
.end method

.method public getIso_min()I
    .registers 1

    .line 141
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_min:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 157
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->width:I

    return p0
.end method

.method public isFirstFrame()Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isFirstFrame:Z

    return p0
.end method

.method public isProtectFace()Z
    .registers 1

    .line 181
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isProtectFace:Z

    return p0
.end method

.method public setCvDetectFrames(I)V
    .registers 2

    .line 153
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->cvDetectFrames:I

    return-void
.end method

.method public setFaceList([Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceList:[Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;

    return-void
.end method

.method public setFaceNum(I)V
    .registers 2

    .line 201
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->faceNum:I

    return-void
.end method

.method public setFirstFrame(Z)V
    .registers 2

    .line 177
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isFirstFrame:Z

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 169
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->height:I

    return-void
.end method

.method public setInitDecayFrames(I)V
    .registers 2

    .line 193
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->initDecayFrames:I

    return-void
.end method

.method public setIso(I)V
    .registers 2

    .line 129
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso:I

    return-void
.end method

.method public setIso_max(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_max:I

    return-void
.end method

.method public setIso_min(I)V
    .registers 2

    .line 145
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->iso_min:I

    return-void
.end method

.method public setProtectFace(Z)V
    .registers 2

    .line 185
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->isProtectFace:Z

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 161
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$ProcessConfig;->width:I

    return-void
.end method
