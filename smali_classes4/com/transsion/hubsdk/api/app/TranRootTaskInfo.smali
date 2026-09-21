.class public Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBounds:Landroid/graphics/Rect;

.field public mChildTaskBounds:[Landroid/graphics/Rect;

.field public mChildTaskIds:[I

.field public mChildTaskNames:[Ljava/lang/String;

.field public mChildTaskUserIds:[I

.field public mPosition:I

.field public mTaskId:I

.field public mTopActivity:Landroid/content/ComponentName;

.field public mTopActivityString:Ljava/lang/String;

.field public mVisible:Z

.field public mWindowingMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 307
    new-instance v0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 300
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 43
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivityString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getChildTaskBounds()[Landroid/graphics/Rect;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    return-object p0
.end method

.method public getChildTaskIds()[I
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskIds:[I

    return-object p0
.end method

.method public getChildTaskNames()[Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getChildTaskUserIds()[I
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    return-object p0
.end method

.method public getPosition()I
    .registers 1

    .line 196
    iget p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mPosition:I

    return p0
.end method

.method public getTaskId()I
    .registers 1

    .line 232
    iget p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTaskId:I

    return p0
.end method

.method public getTopActivity()Landroid/content/ComponentName;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getTopActivityString()Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivityString:Ljava/lang/String;

    return-object p0
.end method

.method public getWindowingMode()I
    .registers 1

    .line 214
    iget p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mWindowingMode:I

    return p0
.end method

.method public isVisible()Z
    .registers 1

    .line 178
    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mVisible:Z

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivityString:Ljava/lang/String;

    .line 282
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    .line 283
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskIds:[I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    .line 286
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    iput-boolean v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mVisible:Z

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mPosition:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mWindowingMode:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTaskId:I

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setChildTaskBounds([Landroid/graphics/Rect;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    return-void
.end method

.method public setChildTaskIds([I)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskIds:[I

    return-void
.end method

.method public setChildTaskNames([Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    return-void
.end method

.method public setChildTaskUserIds([I)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    .line 205
    iput p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mPosition:I

    return-void
.end method

.method public setTaskId(I)V
    .registers 2

    .line 241
    iput p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTaskId:I

    return-void
.end method

.method public setTopActivity(Landroid/content/ComponentName;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public setTopActivityString(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivityString:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 187
    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mVisible:Z

    return-void
.end method

.method public setWindowingMode(I)V
    .registers 2

    .line 223
    iput p1, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mWindowingMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 263
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTopActivityString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 265
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 266
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskBounds:[Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 268
    iget-object p2, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mChildTaskUserIds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 269
    iget-boolean p2, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mVisible:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget p2, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget p2, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mWindowingMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget p0, p0, Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;->mTaskId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
