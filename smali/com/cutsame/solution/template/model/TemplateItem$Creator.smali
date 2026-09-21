.class public final Lcom/cutsame/solution/template/model/TemplateItem$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/template/model/TemplateItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cutsame/solution/template/model/TemplateItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/template/model/TemplateItem;
    .registers 30

    .line 0
    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/cutsame/solution/template/model/TemplateItem;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_35

    const/4 v1, 0x0

    goto :goto_3b

    :cond_35
    sget-object v1, Lcom/cutsame/solution/template/model/Cover;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_3b
    check-cast v1, Lcom/cutsame/solution/template/model/Cover;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-nez v16, :cond_45

    const/4 v15, 0x0

    goto :goto_4b

    :cond_45
    sget-object v15, Lcom/cutsame/solution/template/model/UrlModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    :goto_4b
    move-object/from16 v16, v15

    check-cast v16, Lcom/cutsame/solution/template/model/UrlModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_57

    const/4 v15, 0x0

    goto :goto_5d

    :cond_57
    sget-object v15, Lcom/cutsame/solution/template/model/UrlModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    :goto_5d
    move-object/from16 v17, v15

    check-cast v17, Lcom/cutsame/solution/template/model/UrlModel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_69

    const/4 v15, 0x0

    goto :goto_6f

    :cond_69
    sget-object v15, Lcom/cutsame/solution/template/model/CounterData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    :goto_6f
    move-object/from16 v18, v15

    check-cast v18, Lcom/cutsame/solution/template/model/CounterData;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_7b

    const/4 v15, 0x0

    goto :goto_81

    :cond_7b
    sget-object v15, Lcom/cutsame/solution/template/model/Author;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    :goto_81
    move-object/from16 v19, v15

    check-cast v19, Lcom/cutsame/solution/template/model/Author;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_8d

    const/4 v15, 0x0

    goto :goto_93

    :cond_8d
    sget-object v15, Lcom/cutsame/solution/template/model/Limit;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    :goto_93
    move-object/from16 v20, v15

    check-cast v20, Lcom/cutsame/solution/template/model/Limit;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    move-object v15, v1

    invoke-direct/range {v2 .. v27}, Lcom/cutsame/solution/template/model/TemplateItem;-><init>(JLjava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/template/model/Cover;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/UrlModel;Lcom/cutsame/solution/template/model/CounterData;Lcom/cutsame/solution/template/model/Author;Lcom/cutsame/solution/template/model/Limit;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/template/model/TemplateItem$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/cutsame/solution/template/model/TemplateItem;
    .registers 2

    .line 0
    new-array p0, p1, [Lcom/cutsame/solution/template/model/TemplateItem;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/template/model/TemplateItem$Creator;->newArray(I)[Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object p0

    return-object p0
.end method
