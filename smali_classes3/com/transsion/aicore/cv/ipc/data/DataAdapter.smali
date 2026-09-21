.class public final Lcom/transsion/aicore/cv/ipc/data/DataAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/transsion/aicore/cv/ipc/data/DataAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;

    invoke-direct {v0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;-><init>()V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->INSTANCE:Lcom/transsion/aicore/cv/ipc/data/DataAdapter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final baseApiData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 8

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[baseApiData] method:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string v1, "[baseApiData] result:"

    const/16 v2, 0x21

    const/4 v3, 0x0

    sparse-switch p0, :sswitch_data_140

    goto/16 :goto_102

    :sswitch_24
    const-string p0, "method_fake_expand"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_102

    .line 511
    :cond_2e
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/FakeExpandData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_fake_expand"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    goto :goto_58

    .line 516
    :cond_40
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_4c

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v3, p0

    goto :goto_58

    .line 520
    :cond_4c
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/data/FakeExpandData;

    if-nez p1, :cond_55

    goto :goto_56

    :cond_55
    move-object v3, p0

    :goto_56
    check-cast v3, Lcom/transsion/aicore/cv/ipc/data/FakeExpandData;

    .line 132
    :goto_58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 110
    :sswitch_6b
    const-string p0, "method_fuse_image"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    goto/16 :goto_102

    .line 511
    :cond_75
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/FuseImageData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_fuse_image"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_87

    goto :goto_9f

    .line 516
    :cond_87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_93

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v3, p0

    goto :goto_9f

    .line 520
    :cond_93
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/data/FuseImageData;

    if-nez p1, :cond_9c

    goto :goto_9d

    :cond_9c
    move-object v3, p0

    :goto_9d
    check-cast v3, Lcom/transsion/aicore/cv/ipc/data/FuseImageData;

    .line 124
    :goto_9f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[baseApiData], result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 110
    :sswitch_b4
    const-string p0, "method_resize_image"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bd

    goto :goto_102

    .line 511
    :cond_bd
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/ResizeImageData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_resize_image"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_cf

    goto :goto_e7

    .line 516
    :cond_cf
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_db

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v3, p0

    goto :goto_e7

    .line 520
    :cond_db
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/data/ResizeImageData;

    if-nez p1, :cond_e4

    goto :goto_e5

    :cond_e4
    move-object v3, p0

    :goto_e5
    check-cast v3, Lcom/transsion/aicore/cv/ipc/data/ResizeImageData;

    .line 116
    :goto_e7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 110
    :sswitch_fa
    const-string p0, "method_convert_pixel_format"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_103

    :goto_102
    return-object v3

    .line 511
    :cond_103
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/ConvertPixelFormatData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_convert_pixel_format"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_115

    goto :goto_12d

    .line 516
    :cond_115
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_121

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v3, p0

    goto :goto_12d

    .line 520
    :cond_121
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/data/ConvertPixelFormatData;

    if-nez p1, :cond_12a

    goto :goto_12b

    :cond_12a
    move-object v3, p0

    :goto_12b
    check-cast v3, Lcom/transsion/aicore/cv/ipc/data/ConvertPixelFormatData;

    .line 140
    :goto_12d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :sswitch_data_140
    .sparse-switch
        -0x5623e886 -> :sswitch_fa
        -0x3ca4df52 -> :sswitch_b4
        -0x38e9bee5 -> :sswitch_6b
        0x5d9ff066 -> :sswitch_24
    .end sparse-switch
.end method

.method private final easyPic(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 8

    .line 411
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[easyPic] method:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-class v1, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicStatus;

    const-class v2, Lcom/transsion/aicore/cv/ipc/easypic/SessionResult;

    const/16 v3, 0x21

    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_20c

    goto/16 :goto_1f7

    :sswitch_26
    const-string p0, "method_easypic_generate_session"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_1f7

    .line 511
    :cond_30
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p0, "reslut_easypic_generate_session"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_1f7

    .line 516
    :cond_41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_4e

    .line 517
    invoke-static {p2, p0, v2}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    :goto_4b
    move-object v4, p0

    goto/16 :goto_1f7

    .line 520
    :cond_4e
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/easypic/SessionResult;

    if-nez p1, :cond_57

    goto :goto_58

    :cond_57
    move-object v4, p0

    :goto_58
    check-cast v4, Lcom/transsion/aicore/cv/ipc/easypic/SessionResult;

    goto/16 :goto_1f7

    .line 412
    :sswitch_5c
    const-string p0, "method_easypic_delete_images"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    goto/16 :goto_1f7

    .line 511
    :cond_66
    const-class p0, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_easypic_delete_images"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_79

    goto/16 :goto_1f7

    .line 516
    :cond_79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_84

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto :goto_4b

    .line 520
    :cond_84
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;

    if-nez p1, :cond_8d

    goto :goto_8e

    :cond_8d
    move-object v4, p0

    :goto_8e
    check-cast v4, Lcom/transsion/aicore/cv/ipc/easypic/DeleteResult;

    goto/16 :goto_1f7

    .line 412
    :sswitch_92
    const-string p0, "method_easypic_generate_request"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    goto/16 :goto_1f7

    .line 511
    :cond_9c
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p0, "reslut_easypic_generate_request"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_ad

    goto/16 :goto_1f7

    .line 516
    :cond_ad
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_b8

    .line 517
    invoke-static {p2, p0, v2}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto :goto_4b

    .line 520
    :cond_b8
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/easypic/SessionResult;

    if-nez p1, :cond_c1

    goto :goto_c2

    :cond_c1
    move-object v4, p0

    :goto_c2
    check-cast v4, Lcom/transsion/aicore/cv/ipc/easypic/SessionResult;

    goto/16 :goto_1f7

    .line 412
    :sswitch_c6
    const-string p0, "method_easypic_is_searching"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    goto/16 :goto_1f7

    .line 511
    :cond_d0
    const-class p0, Lcom/transsion/aicore/cv/ipc/easypic/IsSearching;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_easypic_is_searching"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e3

    goto/16 :goto_1f7

    .line 516
    :cond_e3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_ef

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto/16 :goto_4b

    .line 520
    :cond_ef
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/easypic/IsSearching;

    if-nez p1, :cond_f8

    goto :goto_f9

    :cond_f8
    move-object v4, p0

    :goto_f9
    check-cast v4, Lcom/transsion/aicore/cv/ipc/easypic/IsSearching;

    goto/16 :goto_1f7

    .line 412
    :sswitch_fd
    const-string p0, "method_easypic_start_vectorize"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_107

    goto/16 :goto_1f7

    .line 511
    :cond_107
    const-class p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_easypic_vectorize"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11a

    goto/16 :goto_1f7

    .line 516
    :cond_11a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_126

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto/16 :goto_4b

    .line 520
    :cond_126
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;

    if-nez p1, :cond_12f

    goto :goto_130

    :cond_12f
    move-object v4, p0

    :goto_130
    check-cast v4, Lcom/transsion/aicore/cv/ipc/easypic/VectorizeResult;

    goto/16 :goto_1f7

    .line 412
    :sswitch_134
    const-string p0, "method_easypic_interrupt_vectorize"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13e

    goto/16 :goto_1f7

    .line 458
    :cond_13e
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1f7

    .line 412
    :sswitch_142
    const-string p0, "method_easypic_report_trancare"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14c

    goto/16 :goto_1f7

    .line 462
    :cond_14c
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1f7

    .line 412
    :sswitch_150
    const-string p0, "method_easypic_search"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15a

    goto/16 :goto_1f7

    .line 511
    :cond_15a
    const-class p0, Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_easypic_search"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16d

    goto/16 :goto_1f7

    .line 516
    :cond_16d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_179

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto/16 :goto_4b

    .line 520
    :cond_179
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;

    if-nez p1, :cond_182

    goto :goto_183

    :cond_182
    move-object v4, p0

    :goto_183
    check-cast v4, Lcom/transsion/aicore/cv/ipc/easypic/SearchResult;

    goto/16 :goto_1f7

    .line 412
    :sswitch_187
    const-string p0, "method_easypic_reinit"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_191

    goto/16 :goto_1f7

    .line 511
    :cond_191
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p0, "reslut_easypic_reinit"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a1

    goto :goto_1f7

    .line 516
    :cond_1a1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_1ad

    .line 517
    invoke-static {p2, p0, v1}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto/16 :goto_4b

    .line 520
    :cond_1ad
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicStatus;

    if-nez p1, :cond_1b6

    goto :goto_1b7

    :cond_1b6
    move-object v4, p0

    :goto_1b7
    check-cast v4, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicStatus;

    goto :goto_1f7

    .line 412
    :sswitch_1ba
    const-string p0, "method_easypic_push_image_data"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c3

    goto :goto_1f7

    .line 421
    :cond_1c3
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1f7

    .line 412
    :sswitch_1c6
    const-string p0, "method_easypic_is_ready"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1cf

    goto :goto_1f7

    .line 511
    :cond_1cf
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p0, "reslut_easypic_is_ready"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1df

    goto :goto_1f7

    .line 516
    :cond_1df
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_1eb

    .line 517
    invoke-static {p2, p0, v1}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto/16 :goto_4b

    .line 520
    :cond_1eb
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicStatus;

    if-nez p1, :cond_1f4

    goto :goto_1f5

    :cond_1f4
    move-object v4, p0

    :goto_1f5
    check-cast v4, Lcom/transsion/aicore/cv/ipc/easypic/EasyPicStatus;

    .line 479
    :goto_1f7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[easyPic] result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :sswitch_data_20c
    .sparse-switch
        -0x703f61fd -> :sswitch_1c6
        -0x6fc34f02 -> :sswitch_1ba
        -0x2d731948 -> :sswitch_187
        -0x2bc1d563 -> :sswitch_150
        -0x99929ee -> :sswitch_142
        -0x508f880 -> :sswitch_134
        0xc63b83f -> :sswitch_fd
        0xd8f059a -> :sswitch_c6
        0x1c66407a -> :sswitch_92
        0x309500f7 -> :sswitch_5c
        0x5167d081 -> :sswitch_26
    .end sparse-switch
.end method

.method private final fakeExpandData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 7

    .line 149
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[fakeExpandData] method:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string p0, "method_fake_expand"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5f

    .line 511
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/FakeExpandData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string v1, "result_fake_expand"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_4b

    .line 516
    :cond_31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_3f

    .line 517
    invoke-static {p2, v1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object p1, p0

    goto :goto_4b

    .line 520
    :cond_3f
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p2, p0, Lcom/transsion/aicore/cv/ipc/data/FakeExpandData;

    if-nez p2, :cond_48

    goto :goto_49

    :cond_48
    move-object p1, p0

    :goto_49
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/FakeExpandData;

    .line 156
    :goto_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[fakeExpandData] result:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-object p1
.end method

.method private final generateData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 15

    .line 181
    const-string p0, "method_text_to_image"

    const-string v0, "result_text_to_image"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 182
    const-string p0, "method_image_to_image"

    const-string v0, "result_image_to_image"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 183
    const-string p0, "method_image_to_video_create"

    const-string v0, "result_image_to_video_create"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 184
    const-string p0, "method_image_to_video_query"

    const-string v0, "result_image_to_video_query"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 185
    const-string p0, "method_image_to_video_cancel"

    const-string v0, "result_image_to_video_cancel"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 186
    const-string p0, "method_image_to_theme"

    const-string v0, "result_image_to_theme"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 187
    const-string p0, "method_sketch_image"

    const-string v0, "result_sketch_image"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 188
    const-string p0, "method_generate_portrait"

    const-string v0, "result_generate_portrait"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 189
    const-string p0, "method_word_graffiti"

    const-string v0, "result_word_graffiti"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 190
    const-string p0, "method_get_service_usage"

    const-string v0, "result_get_service_usage"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 191
    const-string p0, "method_get_sketch_style"

    const-string v0, "result_get_sketch_style"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Lkotlin/Pair;

    move-result-object p0

    .line 180
    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[generateData] method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p0, :cond_ab

    .line 511
    const-class v0, Lcom/transsion/aicore/cv/ipc/data/GenerateData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    goto :goto_a9

    .line 516
    :cond_8f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_9d

    .line 517
    invoke-static {p2, p0, v0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object p1, p0

    goto :goto_a9

    .line 520
    :cond_9d
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p2, p0, Lcom/transsion/aicore/cv/ipc/data/GenerateData;

    if-nez p2, :cond_a6

    goto :goto_a7

    :cond_a6
    move-object p1, p0

    :goto_a7
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/GenerateData;

    .line 516
    :goto_a9
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/GenerateData;

    .line 201
    :cond_ab
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[generateData] result:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private final imageDepthData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 7

    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[imageDepthData] method:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string p0, "method_image_depth"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5f

    .line 511
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string v1, "result_image_depth"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_4b

    .line 516
    :cond_31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_3f

    .line 517
    invoke-static {p2, v1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object p1, p0

    goto :goto_4b

    .line 520
    :cond_3f
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p2, p0, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;

    if-nez p2, :cond_48

    goto :goto_49

    :cond_48
    move-object p1, p0

    :goto_49
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/ImageDepthResult;

    .line 214
    :goto_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[imageDepthData] result:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-object p1
.end method

.method private final imageEraseData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 8

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[imageEraseData] method:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-class v1, Lcom/transsion/aicore/cv/ipc/erase/SelectData;

    const/16 v2, 0x21

    const-string v3, "result_image_erase"

    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_1d2

    goto/16 :goto_193

    :sswitch_26
    const-string p0, "method_image_erase_send_original"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_193

    .line 273
    :cond_30
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[imageEraseData] SEND_ORIGINAL, result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 239
    :sswitch_4d
    const-string p0, "method_image_erase_cancel"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto/16 :goto_193

    .line 288
    :cond_57
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[imageEraseData] CANCEL, result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 239
    :sswitch_74
    const-string p0, "method_image_erase_matting"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto/16 :goto_193

    .line 511
    :cond_7e
    const-class p0, Lcom/transsion/aicore/cv/ipc/erase/MattingResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8e

    goto :goto_a6

    .line 516
    :cond_8e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_9a

    .line 517
    invoke-static {p2, v3, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v4, p0

    goto :goto_a6

    .line 520
    :cond_9a
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/erase/MattingResult;

    if-nez p1, :cond_a3

    goto :goto_a4

    :cond_a3
    move-object v4, p0

    :goto_a4
    check-cast v4, Lcom/transsion/aicore/cv/ipc/erase/MattingResult;

    .line 245
    :goto_a6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[imageEraseData] IMAGE_MATTING, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 239
    :sswitch_bb
    const-string p0, "method_image_erase_smart_select"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c5

    goto/16 :goto_193

    .line 511
    :cond_c5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d3

    goto :goto_eb

    .line 516
    :cond_d3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_df

    .line 517
    invoke-static {p2, v3, v1}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v4, p0

    goto :goto_eb

    .line 520
    :cond_df
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/erase/SelectData;

    if-nez p1, :cond_e8

    goto :goto_e9

    :cond_e8
    move-object v4, p0

    :goto_e9
    check-cast v4, Lcom/transsion/aicore/cv/ipc/erase/SelectData;

    .line 253
    :goto_eb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[imageEraseData] SMART_SELECT, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 239
    :sswitch_100
    const-string p0, "method_image_erase_manual_brush"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10a

    goto/16 :goto_193

    .line 511
    :cond_10a
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_118

    goto :goto_130

    .line 516
    :cond_118
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_124

    .line 517
    invoke-static {p2, v3, v1}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v4, p0

    goto :goto_130

    .line 520
    :cond_124
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/erase/SelectData;

    if-nez p1, :cond_12d

    goto :goto_12e

    :cond_12d
    move-object v4, p0

    :goto_12e
    check-cast v4, Lcom/transsion/aicore/cv/ipc/erase/SelectData;

    .line 261
    :goto_130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[imageEraseData] MANUAL_BRUSH, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 239
    :sswitch_145
    const-string p0, "method_image_erase_execute_erase"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14e

    goto :goto_193

    .line 511
    :cond_14e
    const-class p0, Lcom/transsion/aicore/cv/ipc/erase/EraseData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15e

    goto :goto_176

    .line 516
    :cond_15e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_16a

    .line 517
    invoke-static {p2, v3, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v4, p0

    goto :goto_176

    .line 520
    :cond_16a
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/erase/EraseData;

    if-nez p1, :cond_173

    goto :goto_174

    :cond_173
    move-object v4, p0

    :goto_174
    check-cast v4, Lcom/transsion/aicore/cv/ipc/erase/EraseData;

    .line 269
    :goto_176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[imageEraseData] EXECUTE_ERASE, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 239
    :sswitch_18b
    const-string p0, "method_image_erase_save_image"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_194

    :goto_193
    return-object v4

    .line 511
    :cond_194
    const-class p0, Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a4

    goto :goto_1bc

    .line 516
    :cond_1a4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_1b0

    .line 517
    invoke-static {p2, v3, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v4, p0

    goto :goto_1bc

    .line 520
    :cond_1b0
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/Bitmap;

    if-nez p1, :cond_1b9

    goto :goto_1ba

    :cond_1b9
    move-object v4, p0

    :goto_1ba
    check-cast v4, Landroid/graphics/Bitmap;

    .line 284
    :goto_1bc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[imageEraseData] SAVE_IMAGE, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    nop

    :sswitch_data_1d2
    .sparse-switch
        -0x7f59692c -> :sswitch_18b
        -0x61ef173f -> :sswitch_145
        -0x442db284 -> :sswitch_100
        -0x1785efd3 -> :sswitch_bb
        0xa501f73 -> :sswitch_74
        0x41d65eb5 -> :sswitch_4d
        0x42f20c0d -> :sswitch_26
    .end sparse-switch
.end method

.method private final imageExpandData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 9

    .line 300
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[imageExpandData] method:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-class v1, Lcom/transsion/aicore/cv/ipc/expand/ExpandResult;

    const-class v2, Lcom/transsion/aicore/cv/ipc/expand/FuseResult;

    const/16 v3, 0x21

    const-string v4, "result_image_expand"

    const/4 v5, 0x0

    sparse-switch p0, :sswitch_data_162

    goto/16 :goto_143

    :sswitch_28
    const-string p0, "method_save_ratio_expand_image"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto/16 :goto_143

    .line 511
    :cond_32
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_58

    .line 516
    :cond_40
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v3, :cond_4c

    .line 517
    invoke-static {p2, v4, v2}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v5, p0

    goto :goto_58

    .line 520
    :cond_4c
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/expand/FuseResult;

    if-nez p1, :cond_55

    goto :goto_56

    :cond_55
    move-object v5, p0

    :goto_56
    check-cast v5, Lcom/transsion/aicore/cv/ipc/expand/FuseResult;

    .line 330
    :goto_58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[imageExpandData] SAVE_RATIO_IMAGE, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 301
    :sswitch_6d
    const-string p0, "method_image_ratio_expand"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    goto/16 :goto_143

    .line 511
    :cond_77
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_85

    goto :goto_9d

    .line 516
    :cond_85
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v3, :cond_91

    .line 517
    invoke-static {p2, v4, v1}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v5, p0

    goto :goto_9d

    .line 520
    :cond_91
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/expand/ExpandResult;

    if-nez p1, :cond_9a

    goto :goto_9b

    :cond_9a
    move-object v5, p0

    :goto_9b
    check-cast v5, Lcom/transsion/aicore/cv/ipc/expand/ExpandResult;

    .line 307
    :goto_9d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[imageExpandData] RATIO_EXPAND, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 301
    :sswitch_b2
    const-string p0, "method_image_rotation_expand"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bc

    goto/16 :goto_143

    .line 511
    :cond_bc
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_ca

    goto :goto_e2

    .line 516
    :cond_ca
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v3, :cond_d6

    .line 517
    invoke-static {p2, v4, v1}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v5, p0

    goto :goto_e2

    .line 520
    :cond_d6
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/expand/ExpandResult;

    if-nez p1, :cond_df

    goto :goto_e0

    :cond_df
    move-object v5, p0

    :goto_e0
    check-cast v5, Lcom/transsion/aicore/cv/ipc/expand/ExpandResult;

    .line 315
    :goto_e2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[imageExpandData] ROTATION_EXPAND, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 301
    :sswitch_f7
    const-string p0, "method_save_rotation_expand_image"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_100

    goto :goto_143

    .line 511
    :cond_100
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10e

    goto :goto_126

    .line 516
    :cond_10e
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v3, :cond_11a

    .line 517
    invoke-static {p2, v4, v2}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v5, p0

    goto :goto_126

    .line 520
    :cond_11a
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/expand/FuseResult;

    if-nez p1, :cond_123

    goto :goto_124

    :cond_123
    move-object v5, p0

    :goto_124
    check-cast v5, Lcom/transsion/aicore/cv/ipc/expand/FuseResult;

    .line 338
    :goto_126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[imageExpandData] SAVE_ROTATION_IMAGE, result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 301
    :sswitch_13b
    const-string p0, "method_image_expand_send_original"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_144

    :goto_143
    return-object v5

    .line 319
    :cond_144
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[imageExpandData] SEND_ORIGINAL, result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    nop

    :sswitch_data_162
    .sparse-switch
        -0x703eb5bb -> :sswitch_13b
        -0x4483008d -> :sswitch_f7
        0xe22aeb9 -> :sswitch_b2
        0x2ced65d0 -> :sswitch_6d
        0x363be7ce -> :sswitch_28
    .end sparse-switch
.end method

.method private final imageParallaxData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 9

    .line 485
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[imageParallaxData] method: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string p0, "method_image_parallax"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "[imageParallaxData] result:"

    const/16 v2, 0x21

    const-class v3, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;

    const-string v4, "result_image_parallax"

    const/4 v5, 0x0

    if-eqz p0, :cond_60

    .line 511
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_4d

    .line 516
    :cond_35
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_41

    .line 517
    invoke-static {p2, v4, v3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v5, p0

    goto :goto_4d

    .line 520
    :cond_41
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;

    if-nez p1, :cond_4a

    goto :goto_4b

    :cond_4a
    move-object v5, p0

    :goto_4b
    check-cast v5, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;

    .line 492
    :goto_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 495
    :cond_60
    const-string p0, "method_image_parallax_cancel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a0

    .line 511
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_76

    goto :goto_8e

    .line 516
    :cond_76
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_82

    .line 517
    invoke-static {p2, v4, v3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v5, p0

    goto :goto_8e

    .line 520
    :cond_82
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;

    if-nez p1, :cond_8b

    goto :goto_8c

    :cond_8b
    move-object v5, p0

    :goto_8c
    check-cast v5, Lcom/transsion/aicore/cv/ipc/data/ImageParallaxResult;

    .line 500
    :goto_8e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    return-object v5
.end method

.method private final keyguardDepthData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 7

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[keyguardDepthData] method:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string p0, "method_keyguard_depth_of_field"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5f

    .line 511
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string v1, "result_keyguard_depth_of_field"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_4b

    .line 516
    :cond_31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_3f

    .line 517
    invoke-static {p2, v1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object p1, p0

    goto :goto_4b

    .line 520
    :cond_3f
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p2, p0, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;

    if-nez p2, :cond_48

    goto :goto_49

    :cond_48
    move-object p1, p0

    :goto_49
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/DepthOfFieldData;

    .line 172
    :goto_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[keyguardDepthData] result:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-object p1
.end method

.method private final ocrData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 7

    .line 379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ocr] method: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v1, -0x7527fb4d

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eq p0, v1, :cond_bf

    const v1, -0x22c8a01f

    if-eq p0, v1, :cond_77

    const v1, -0xfffe8bd

    if-eq p0, v1, :cond_2e

    goto/16 :goto_c7

    :cond_2e
    const-string p0, "method_text_recognition"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto/16 :goto_c7

    .line 511
    :cond_38
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/OCROutputData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_text_recognization"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_62

    .line 516
    :cond_4a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_56

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v3, p0

    goto :goto_62

    .line 520
    :cond_56
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/data/OCROutputData;

    if-nez p1, :cond_5f

    goto :goto_60

    :cond_5f
    move-object v3, p0

    :goto_60
    check-cast v3, Lcom/transsion/aicore/cv/ipc/data/OCROutputData;

    .line 386
    :goto_62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[ocr] result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 380
    :cond_77
    const-string p0, "method_privacy_mask"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    goto :goto_c7

    .line 511
    :cond_80
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_privacy_mask"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    goto :goto_aa

    .line 516
    :cond_92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_9e

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v3, p0

    goto :goto_aa

    .line 520
    :cond_9e
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;

    if-nez p1, :cond_a7

    goto :goto_a8

    :cond_a7
    move-object v3, p0

    :goto_a8
    check-cast v3, Lcom/transsion/aicore/cv/ipc/data/PrivacyMaskResult;

    .line 394
    :goto_aa
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[imageDepthData] result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 380
    :cond_bf
    const-string p0, "method_m_pesa"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8

    :goto_c7
    return-object v3

    .line 511
    :cond_c8
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/MPesaOutputData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string p1, "result_m_pesa"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_da

    goto :goto_f2

    .line 516
    :cond_da
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_e6

    .line 517
    invoke-static {p2, p1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object v3, p0

    goto :goto_f2

    .line 520
    :cond_e6
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/aicore/cv/ipc/data/MPesaOutputData;

    if-nez p1, :cond_ef

    goto :goto_f0

    :cond_ef
    move-object v3, p0

    :goto_f0
    check-cast v3, Lcom/transsion/aicore/cv/ipc/data/MPesaOutputData;

    .line 402
    :goto_f2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[mpesa] result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private final portraitMattingData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 7

    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[portraitMattingData] method:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string p0, "method_portrait_matting"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5f

    .line 511
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string v1, "result_portrait_matting"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_4b

    .line 516
    :cond_31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_3f

    .line 517
    invoke-static {p2, v1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object p1, p0

    goto :goto_4b

    .line 520
    :cond_3f
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p2, p0, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;

    if-nez p2, :cond_48

    goto :goto_49

    :cond_48
    move-object p1, p0

    :goto_49
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/PortraitMattingData;

    .line 354
    :goto_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[portraitMattingData] result:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-object p1
.end method

.method private final smartMattingData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 7

    .line 363
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[smartMattingData] method:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string p0, "method_smart_matting"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5f

    .line 511
    const-class p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 512
    const-string v1, "result_smart_matting"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_4b

    .line 516
    :cond_31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_3f

    .line 517
    invoke-static {p2, v1, p0}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    move-object p1, p0

    goto :goto_4b

    .line 520
    :cond_3f
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of p2, p0, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;

    if-nez p2, :cond_48

    goto :goto_49

    :cond_48
    move-object p1, p0

    :goto_49
    check-cast p1, Lcom/transsion/aicore/cv/ipc/data/SmartMattingData;

    .line 370
    :goto_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[smartMattingData] result:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-object p1
.end method


# virtual methods
.method public final parseBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 7

    const-string v0, "ability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    const-string v0, "[parseBundle]"

    const-string v1, "DataAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[parseBundle] ability: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", method: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3a

    goto :goto_40

    :cond_3a
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_46

    .line 41
    :goto_40
    const-string p0, "[parseBundle] param invalid."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 45
    :cond_46
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_12a

    goto/16 :goto_fc

    :sswitch_4f
    const-string v0, "erase_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_fc

    .line 71
    :cond_59
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->imageEraseData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_115

    .line 45
    :sswitch_5f
    const-string v0, "smart_matting_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_fc

    .line 87
    :cond_69
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->smartMattingData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_115

    .line 45
    :sswitch_6f
    const-string v0, "portrait_matting_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_fc

    .line 83
    :cond_79
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->portraitMattingData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_115

    .line 45
    :sswitch_7f
    const-string v0, "fake_expand_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_fc

    .line 51
    :cond_89
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->fakeExpandData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_115

    .line 45
    :sswitch_8f
    const-string v0, "ocr_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_fc

    .line 79
    :cond_99
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->ocrData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_115

    .line 45
    :sswitch_9f
    const-string v0, "base_api_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto :goto_fc

    .line 47
    :cond_a8
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->baseApiData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_115

    .line 45
    :sswitch_ae
    const-string v0, "image_depth_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto :goto_fc

    .line 63
    :cond_b7
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->imageDepthData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_115

    .line 45
    :sswitch_bc
    const-string v0, "expand_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    goto :goto_fc

    .line 75
    :cond_c5
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->imageExpandData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_115

    .line 45
    :sswitch_ca
    const-string v0, "easypic_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    goto :goto_fc

    .line 91
    :cond_d3
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->easyPic(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_115

    .line 45
    :sswitch_d8
    const-string v0, "keyguard_depth_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    goto :goto_fc

    .line 55
    :cond_e1
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->keyguardDepthData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_115

    .line 45
    :sswitch_e6
    const-string v0, "generate_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    goto :goto_fc

    .line 59
    :cond_ef
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->generateData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_115

    .line 45
    :sswitch_f4
    const-string v0, "image_parallax_ability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_111

    .line 99
    :goto_fc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[parseData] ability do not know:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    .line 95
    :cond_111
    invoke-direct {p0, p2, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->imageParallaxData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    .line 103
    :goto_115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[parseBundle], result = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :sswitch_data_12a
    .sparse-switch
        -0x60dac31a -> :sswitch_f4
        -0x56b4d3a0 -> :sswitch_e6
        -0x434c312b -> :sswitch_d8
        -0x3decb5cd -> :sswitch_ca
        -0x2668ff7b -> :sswitch_bc
        0x2e5433ca -> :sswitch_ae
        0x3115cf97 -> :sswitch_9f
        0x530b0b09 -> :sswitch_8f
        0x54b962af -> :sswitch_7f
        0x5bd5f195 -> :sswitch_6f
        0x5e77afc3 -> :sswitch_5f
        0x7273e891 -> :sswitch_4f
    .end sparse-switch
.end method
