# import requests
# from bs4 import BeautifulSoup
# import os
#
# # coding=utf8
#
# url_aopolo ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-phong-co-co/'
# url_aophong ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-phong/'
# url_aosomi ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-so-mi/'
# url_aolen ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-len/'
# url_aohoodile ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-hoodie/'
# url_aokhoac = 'https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-khoac/'
# url_aovest ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-vest/'
# folder = 'aonam'
# try:
#     os.mkdir(os.path.join(os.getcwd(),folder))
# except:
#     pass
# os.chdir(os.path.join(os.getcwd(),folder))
#
# def imagedown(pos,url,folder):
#     r = requests.get(url)
#     soup=BeautifulSoup(r.text,'html.parser')
#
#     # print(soup.title.text)
#
#     images = soup.find_all('img')
#     # print(image)
#     for image in images:
#                 # name = image['alt']
#         if image.has_attr('class'):
#             if image['class'] == ['img-loop']:
#                 # coding=utf8
#                 if image.has_attr('alt'):
#                     # print(image['alt'])
#                     name = image['alt']
#                     link = image['src']
#                     # print(name)
#                     # coding=utf8
#                     with open(name + '.jpg','wb') as f:
#                         im = requests.get(link)
#                         f.write(im.content)
#                         print('Writing: ',name)
#
# def load_fol(url_1,folder_1,length):
#     try:
#         os.mkdir(os.path.join(os.getcwd(),folder_1))
#     except:
#         pass
#     os.chdir(os.path.join(os.getcwd(),folder_1))
#     pos = 0
#     for i in range(length) :
#         if i > 1:
#             imagedown(pos,url_1+'page/'+str(i),folder_1)
#         if i == 1:
#             imagedown(pos,url_1,folder_1)
#
# load_fol(url_aopolo,"aopolo",2)
# load_fol(url_aophong,"aophong",5)
# load_fol(url_aosomi,"aosomi",4)
# load_fol(url_aolen,"aolen",2)
# load_fol(url_aohoodile,"aohoodie",2)
# load_fol(url_aokhoac,"aokhoac",2)
# load_fol(url_aovest,"aovest",2)
#

import requests
from bs4 import BeautifulSoup
import os

# coding=utf8

url_aopolo ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-phong-co-co/'
url_aophong ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-phong/'
url_aosomi ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-so-mi/'
url_aolen ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-len/'
url_aohoodile ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-hoodie/'
url_aokhoac = 'https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-khoac/'
url_aovest ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/ao/ao-vest/'
folder = 'aonam'
try:
    os.mkdir(os.path.join(os.getcwd(),folder))
except:
    pass
os.chdir(os.path.join(os.getcwd(),folder))

def imagedown(url,folder):
    r = requests.get(url)
    soup=BeautifulSoup(r.text,'html.parser')

    # print(soup.title.text)

    lista = soup.find_all('a')
    # print(image)
    for a in lista:
        if a.has_attr('class'):
            if a['class'] == ['image-resize']:
                t1 = a['title']
                # print(t1)
                try:
                    os.mkdir(os.path.join(
                        "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\aonam\\"+folder,
                        t1))
                except:
                    pass
                os.chdir(os.path.join(
                    "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\aonam\\"+folder,
                    t1))
                r1 = requests.get(a['href'])
                soup1 = BeautifulSoup(r1.text, 'html.parser')
                images = soup1.find_all('img')
                for img in images:
                    if img.has_attr('alt'):
                        if img['alt'] == " " + a['title'] + " ":
                            namefolder = img['src'].split('/')
                            link_urlCT = img['src']
                            # print(namefolder[len(namefolder) - 1])
                            with open(namefolder[len(namefolder) - 1], 'wb') as f:
                                im = requests.get(link_urlCT)
                                f.write(im.content)
                                print('Writing: ', namefolder[len(namefolder) - 1])
def load_fol(url_1,folder_1,length):
    for i in range(1,length):
        try:
            os.mkdir(os.path.join(
                "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\aonam",
                folder_1))
        except:
            pass
        os.chdir(os.path.join(
            "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\aonam",
            folder_1))
        imagedown(url_1+'page/'+str(i),folder_1)

load_fol(url_aopolo,"aopolo",2)
load_fol(url_aophong,"aophong",5)
load_fol(url_aosomi,"aosomi",4)
load_fol(url_aolen,"aolen",2)
load_fol(url_aohoodile,"aohoodie",2)
load_fol(url_aokhoac,"aokhoac",2)
load_fol(url_aovest,"aovest",2)

